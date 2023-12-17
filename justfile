# Default help menu
_default:
  @just --list

whiskers_cmd := "whiskers"
template_path := "lazygit.hbs"
other_template_path := "lazygit-mergeable.hbs"

output_base := "themes"
other_output_base := "themes-mergable"

# Generate an accent / flavor combination. Minified name for line brevity
_a flavor accent: 
	@{{whiskers_cmd}} {{template_path}} {{flavor}} --override accent="{{accent}}" > {{output_base}}/{{flavor}}/{{accent}}.yml
	@{{whiskers_cmd}} {{other_template_path}} {{flavor}} --override accent="{{accent}}" > {{other_output_base}}/{{flavor}}/{{accent}}.yml

# Generate a flavor with all its accents
_gen f: (_a f "rosewater") (_a f "flamingo") (_a f "pink") (_a f "mauve") (_a f "red") (_a f "maroon") (_a f "peach") (_a f "yellow") (_a f "green") (_a f "teal") (_a f "sky") (_a f "sapphire") (_a f "blue") (_a f "lavender")

# Port tasks start

# Setup the output location
setup:
  mkdir -p {{output_base}}
  mkdir -p {{output_base}}/mocha
  mkdir -p {{output_base}}/macchiato
  mkdir -p {{output_base}}/latte
  mkdir -p {{output_base}}/frappe

  mkdir -p {{other_output_base}}
  mkdir -p {{other_output_base}}/mocha
  mkdir -p {{other_output_base}}/macchiato
  mkdir -p {{other_output_base}}/latte
  mkdir -p {{other_output_base}}/frappe

# Teardown the output location
clean:
  rm -r {{output_base}}
  rm -r {{other_output_base}}

# Generate a single flavor with its accents
generate flavor: (_gen flavor)

# Generate all flavors with their accents
all: setup (_gen "latte") (_gen "frappe") (_gen "macchiato") (_gen "mocha")
