<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/jesseduffield/lazygit">Lazygit</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/lazygit/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/lazygit?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/lazygit/issues"><img src="https://img.shields.io/github/issues/catppuccin/lazygit?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/lazygit/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/lazygit?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

1. Clone this repository locally
2. Ensure `~/.config/lazygit` exists. If it doesn't, you can run `lazygit` to launch and setup the directory.
3. Choose the flavor you want (located [in the `themes` directory of this repository](./themes))
4. Choose the accent you want from within the flavor directory.
5. Replace the `theme` section of `~/.config/lazygit/config.yml` with the theme you want to activate (from `themes`).
    For example, if you want to use the catppuccin **mocha** theme, with the **blue** accent, then copy the contents of [`themes/mocha/blue.yml`](./themes/mocha/blue.ymlb) and paste them directly into your lazygit `config.yml` as follows:

    <details>
    <summary>config.yml</summary>

    ```
    gui:
      # Use the mocha catppuccin theme
			theme:
				activeBorderColor:
					- '#89b4fa'
					- bold
				inactiveBorderColor:
					- '#a6adc8'
				optionsTextColor:
					- '#89b4fa'
				selectedLineBgColor:
					- '#313244'
				selectedRangeBgColor:
					- '#313244'
				cherryPickedCommitBgColor:
					- '#45475a'
				cherryPickedCommitFgColor:
					- '#89b4fa'
				unstagedChangesColor:
					- '#f38ba8'
				defaultFgColor:
					- '#cdd6f4'
				searchingActiveBorderColor:
					- '#f9e2af'
    ```

    </details>

## 🙋 FAQ

- Q: **_"Why is the background wrong?"_**\
  A: Lazygit uses your terminal background. You should set it to the relevant background
  for your theme.

## 💝 Thanks to

- [nullishamy](https://github.com/nullishamy)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/lazygit/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
