# Google Lighthouse Report Archive

A simple static dashboard for browsing Google Lighthouse HTML reports.

## Overview

This repository stores Lighthouse HTML reports and provides a landing page (`index.html`) that renders report links from `reports.json`.

## Repository Structure

- `index.html`: Dashboard UI that displays report cards.
- `reports.json`: Source of truth for report file names used by the dashboard.
- `update-reports.ps1`: Regenerates `reports.json` from all root `.html` files (excluding `index.html`).
- `*.html`: Lighthouse report files.

## Add New Reports

1. Place new Lighthouse report HTML files in the repository root.
2. Update `reports.json` by running:

```powershell
./update-reports.ps1
```

3. Commit the updated report file(s) and `reports.json`.

## Local Preview

Serve the folder over HTTP, then open the dashboard:

```powershell
npx serve .
```

Then browse to the local URL shown in the terminal (commonly `http://localhost:3000`).

## Deployment Notes

- The dashboard reads only from `reports.json`.
- Keep `reports.json` current to ensure all reports appear.

## License

Licensed under the MIT License. See [LICENSE](LICENSE).
