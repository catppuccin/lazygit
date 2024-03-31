# Default help menu
_default:
  @just --list

whiskers_cmd := "whiskers"
template_path := "lazygit.tera"

output_base := "themes"
other_output_base := "themes-mergable"

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

# Generate all flavors with their accents
all: setup 
  whiskers {{template_path}}