# Postman Testing over API Key

Requirements (dependencies):
- `dotenv`
- `cross-env`
- `newman`

Run by:

1. Without export:
`npm run newman`

2. With export for `dev` environment:
`npm run newman -- --export`

3. With export for `prod` environment:
`npm run newman -- --export --prod`