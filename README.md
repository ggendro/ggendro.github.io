# Gaël Gendron's Personal Website

Source code of my personal research website, built with Jekyll and hosted on GitHub Pages: [https://ggendro.github.io](https://ggendro.github.io).

It is a single page showcasing news, experience, awards and talks, research and publications with a menu that scrolls to each section, a light and a dark theme, and a quiet landscape band at the bottom of the window. It loads nothing from other websites: fonts and icons are served from this repository. The website is responsive and works on both desktop and mobile devices. You can use the code as a template for your own website.

## Editing the content

| What | Where |
|---|---|
| Name, title, bio, research introduction, community contributions, awards and talks, experience, reviewing, CV link, contact and social links | `_data/profile.yml` |
| News (newest first) | `_data/news.yml` |
| Publications (newest first). A paper with a `tldr` (one-line takeaway) is listed under "Selected publications"; the others under "Other publications" | `_data/publications.yml` |
| Browser tab titles | `_data/titles.yml` |
| CV, profile photo, landscape photo and drawings | `assets/` |
| Blog posts: any Markdown file in `_posts/` (named `YYYY-MM-DD-title.md`) is published, and a "Blog" menu item appears automatically (the example post is excluded in `_config.yml`) | `_posts/` |

The social links are also listed in `_config.yml` (`social.links`, used for search engines' structured data): keep both lists in sync.

The bio, research introduction, community contributions, news, awards, experience and reviewing texts accept Markdown (links, *italics*, **bold**); publication titles and summaries are shown as plain text. Save files as **UTF-8 without BOM**: a byte order mark at the start of a file can stop Jekyll from reading its front matter.

## Running locally

### Using Docker

1. Install [Docker](https://www.docker.com/get-started) (with Docker Compose) and start it.
2. From the repository folder, run:

```bash
docker compose up
```

3. Open `http://localhost:4000`. Pages rebuild automatically when files change.

### Without Docker

1. Install Ruby 3.2 or newer (GitHub Pages uses 3.3) and Bundler, following the [Jekyll installation guide](https://jekyllrb.com/docs/installation/).
2. From the repository folder, install the dependencies (the exact versions GitHub Pages uses are pinned in `Gemfile.lock`):

```bash
bundle install
```

3. Start the local server, then open `http://localhost:4000`:

```bash
bundle exec jekyll serve --livereload
```

## Checks

Every push runs `.github/workflows/check-site.yml` on GitHub Actions: it builds the site with the same gems as GitHub Pages and checks every internal link, anchor, image (including alt text) and script with [HTML-Proofer](https://github.com/gjtorikian/html-proofer). To run the same check locally:

```bash
JEKYLL_ENV=production bundle exec jekyll build
gem install html-proofer   # add --user-install if your Ruby comes from the system package manager
htmlproofer ./_site --disable-external
```

External links are not checked automatically, because some sites (ACM Digital Library, LinkedIn) block automated checkers and would always fail. To check them occasionally by hand, run `htmlproofer ./_site` and ignore failures from those sites (status 403 or 999): they work in a browser.

## License

This project is available as open source under the terms of the MIT License. Feel free to use this as a template for your own website, but please include attribution by linking back to this repository.

## Usage as a Template

You are welcome to use this website as a template for your own personal site. If you do:

1. Please provide attribution by linking back to this repository
2. Remove all personal information and replace it with your own
3. Customize the design and content to make it your own

See the LICENSE file for more details.
