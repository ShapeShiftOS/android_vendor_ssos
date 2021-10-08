package generator

import (
	"fmt"

	"android/soong/android"
)

func ssosExpandVariables(ctx android.ModuleContext, in string) string {
	ssosVars := ctx.Config().VendorConfig("ssosVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if ssosVars.IsSet(name) {
			return ssosVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
