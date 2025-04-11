# Gaël Gendron's Personal Website

This is the source code for my personal website built with Jekyll and hosted on GitHub Pages. It showcases my projects and blog posts. It is designed to be simple, clean, and easy to navigate. The website is responsive and works well on both desktop and mobile devices. You can find the live version at [https://ggendro.github.io](https://ggendro.github.io). You can use this as a template for your own personal website.

## Running Locally

### Using Docker (Recommended)

This project is set up to run in Docker, which makes it easy to get started without installing Ruby or Jekyll directly on your machine.

1. Make sure you have [Docker](https://www.docker.com/get-started) and Docker Compose installed
2. Clone this repository
3. Navigate to the project directory
4. Run the following command:

```bash
docker-compose up
```

5. Visit `http://localhost:4000` in your browser

### Without Docker

If you prefer to run without Docker:

1. Install Ruby and Jekyll according to the [official Jekyll documentation](https://jekyllrb.com/docs/installation/)
2. Clone this repository
3. Navigate to the project directory
4. Install dependencies:

```bash
bundle install
```

5. Start the local server:

```bash
bundle exec jekyll serve
```

6. Visit `http://localhost:4000` in your browser

## :warning: Important Note on File Encoding

When creating or editing Markdown files for this Jekyll site (particularly those in `_posts` and `_projects` directories), ensure they are saved with **UTF-8 encoding WITHOUT BOM** (Byte Order Mark). Files with UTF-8 BOM may cause Jekyll to:

- Fail to recognize front matter correctly
- Not process the file at all

If projects are not showing up, or if you see errors related to front matter, this is likely due to BOM being present in the file. Check if your editor is saving files with BOM. To fix this issue in VS Code: Click on encoding in the status bar, then "Save with Encoding" and "UTF-8".

## License

This project is available as open source under the terms of the MIT License. Feel free to use this as a template for your own website, but please include attribution by linking back to this repository.

## Usage as a Template

You are welcome to use this website as a template for your own personal site. If you do:

1. Please provide attribution by linking back to this repository
2. Remove all personal information and replace it with your own
3. Customize the design and content to make it your own

See the LICENSE file for more details.