# Postman Testing over API Key

Postman testing over API Key, created to bypass the limitations of Postman Collection Runner.

## Prerequisites

Ensure the following dependencies are added to your project:

- [`dotenv`](https://www.npmjs.com/package/dotenv)
- [`cross-env`](https://www.npmjs.com/package/cross-env)
- [`newman`](https://www.npmjs.com/package/newman)

## Getting Started

To integrate this setup into your project, follow these steps:

1. **Copy Postman Directory**  
   Clone or download the [`postman`](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fricky-kiva%2Fpostman-testing-over-api-key%2Ftree%2Fmain%2Fpostman) folder from this repository and place it in the root of your project directory.

2. **Install Dependencies**  
   Install the required dependencies using npm:
   ```bash
   npm install dotenv cross-env newman
   ```

3. **Update npm Scripts**  
   Add the following scripts to your project's `package.json` file for easy execution:
   ```json
   "scripts": {
     "pm:export": "node postman/pm_export_exec.js",
     "newman": "node postman/newman_exec.js"
   }
   ```

4. **Configure Environment Variables**  
   Update your `.env` file with the following values:
   - **Postman API Key**: Get from https://web.postman.co/settings/me/api-keys.
   - **Postman Collection UID (*dev* & *prod*)**: Get from https://api.getpostman.com/collections?apikey={YOUR_API_KEY}.
   - **Postman Environment UID (*dev* & *prod*)**: Get from https://api.getpostman.com/environments?apikey={YOUR_API_KEY}.

   *Note:*
   - *Prod* UID is optional. Without `--prod`, *dev* UIDs are used. You can reuse the *dev* UID for both.

## Running Tests

Use the npm scripts to run your tests with or without environment exports.

### a. Run tests and export the *dev* collection & environment
```bash
npm run newman -- --export
```

### b. Run tests and export the *prod* collection & environment
```bash
npm run newman -- --export --prod
```

### c. Run tests without export
```bash
npm run newman
```

### d. Only export *dev* collection & environment
```bash
npm run pm:export
```

### e. Only export *prod* collection & environment
```bash
npm run pm:export -- --prod
```

## Contributing

Feel free to contribute to this repository by submitting pull requests, creating issues, or offering suggestions for improvements.
