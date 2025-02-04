# Self Hosting R2R

## Calls
```
${BASE} = 
```
## Table of Contents

## Install

```bash
# Install the R2R package
pip install r2r

# Set necessary environment variables
export OPENAI_API_KEY=sk-...

# Run the server and database
r2r serve --docker --full

```

# Javascript / Typescript Code

## Table of Contents

- [Introduction](#introduction)
- [Instructions](#instructions)
- [Code](#code)

## Introduction

### 
I need to use more modern commands.

## Instructions

Make sure variable `R2R_API_KEY` is set
```bash
export R2R_API_KEY='pk_[...].sk_[...]'
```

Start client with base URL `https://api.cloud.sciphi.ai`

## R2R Javascript Client
These commands are adapted from the Quickstart.

### Install

```bash
npm install r2r-js
```

### Initialize the Client
```typescript
const { default: dotenv } = await import("dotenv");

// Load environment variables from .env file
dotenv.config();

// Environment variables (Replace these with actual values or load from .env)
const BASE_URL: string = process.env.BASE_URL || "https://api.cloud.sciphi.ai";
const API_KEY: string = process.env.API_KEY || "";
const USERNAME: string | undefined = process.env.USERNAME;
const PASSWORD: string | undefined = process.env.PASSWORD;
let sessionAccessToken: string = ""; // Can be updated dynamically

const { r2rClient } = require("r2r-js");
const client = new r2rClient(`${BASE_URL}`);
const cs = require("./csFunctions.js");

```

### Get tokens by querying the login endpoint

#### Working example (suggested by ChatGPT):
```javascript



```

### Assign tokens to client

```javascript
// Extract tokens from the API response
const { access_token, refresh_token } = body.results;

// Assign tokens to the client
client.accessToken = access_token.token; // Assign the access token
client.refreshToken = refresh_token.token; // Assign the refresh token
```

```javascript
// Log to verify
console.log("Access Token:", client.accessToken);
console.log("Refresh Token:", client.refreshToken);
```

### Run a query

#### Search Query Function
```javascript
// Define csSearch with accessToken as an optional parameter with a default value
async function csSearch(query: string, accessToken: string = sessionAccessToken) {
  try {
    const response = await fetch("https://api.cloud.sciphi.ai/v3/retrieval/search", {
      method: "POST",
      headers: {
        "Authorization": `Bearer ${accessToken}`, // Use the provided or default access token
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ query }),
    });

    if (!response.ok) {
      const errorBody = await response.json();
      throw new Error(
        `Error: ${response.status} ${response.statusText}. Details: ${JSON.stringify(errorBody)}`
      );
    }

    return await response.json();
  } catch (error) {
    console.error("An error occurred in csSearch:", error);
    throw error;
  }
}
```

```javascript
let sessionAccessToken = client.accessToken;
let query = "Who is the developer?";

async function runSearch(query: string, accessToken: string = sessionAccessToken) {
  try {
    const response = await fetch("https://api.cloud.sciphi.ai/v3/retrieval/search", {
      method: "POST",
      headers: {
        "Authorization": `Bearer ${accessToken}`,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ query }),
    });

    if (!response.ok) {
      const errorBody = await response.json();
      throw new Error(
        `Error: ${response.status} ${response.statusText}. Details: ${JSON.stringify(errorBody)}`
      );
    }

    const body = await response.json();
    return body;

  } catch (error) {
    console.error("Error during search:", error);
  }
}
```

```typescript
async function runSearch(query: string, accessToken: string = sessionAccessToken) {
  try {
    const response = await fetch("https://api.cloud.sciphi.ai/v3/retrieval/search", {
      method: "POST",
      headers: {
        "Authorization": `Bearer ${accessToken}`,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ query }),
    });

    if (!response.ok) {
      const errorBody = await response.json();
      throw new Error(
        `Error: ${response.status} ${response.statusText}. Details: ${JSON.stringify(errorBody)}`
      );
    }

    return await response.json();
}
```

```typescript
async function runSearch(query: string, accessToken: string = sessionAccessToken) {
  try {
    const response = await fetch("https://api.cloud.sciphi.ai/v3/retrieval/search", {
      method: "POST",
      headers: {
        "Authorization": `Bearer ${myAccessToken}`,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ query }),
    });

    if (!response.ok) {
      const errorBody = await response.json();
      throw new Error(
        `Error: ${response.status} ${response.statusText}. Details: ${JSON.stringify(errorBody)}`
      );
    }

    const body = await response.json();
    return body; // ✅ Explicitly return the result
  } catch (error) {
    console.error("Error during search:", error);
    throw error; // ✅ Re-throw so caller can handle it
  }
}
```


```typescript
// Example of calling the function and handling the returned data
(async () => {
  try {
    const searchResults = await runSearch(); // ✅ Now we can capture the returned value
    console.log("Search results:", searchResults);
  } catch (error) {
    console.error("Failed to fetch search results:", error);
  }
})();
```



```typescript
// Call the async function
await runSearch(query);
```

#### Usage
```javascript

// Example usage:
(async () => {
  const searchResults = await csSearch(query); // Uses the default accessToken
  console.log(searchResults);
})();

```


#### Old but this worked
```javascript

let response2 = await fetch("https://api.cloud.sciphi.ai/v3/retrieval/search", {
...   method: "POST",
...   headers: {
...     "Authorization": `Bearer ${accessToken}`, // Include the Bearer token
...     "Content-Type": "application/json"
...   },
...   body: JSON.stringify({
...     "query": "Who is the developer?"
...   }),
... });

// Define the csSearch function
async function csSearch(accessToken: string, query: string) {
  const response = await fetch("https://api.cloud.sciphi.ai/v3/retrieval/search", {
    method: "POST",
    headers: {
      "Authorization": `Bearer ${accessToken}`, // Use the provided access token
      "X-Api-Key": "your-api-key", // Replace with your actual API key
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      query: query // Use the provided query
    }),
  });

  const body = await response.json(); // Parse and return the response body
  return body;
}
```


```javascript
// Use the access_token retrieved earlier
const accessToken = body.results.access_token.token; 



// Search R2R (POST /v3/retrieval/search)
let response2 = await fetch("https://api.cloud.sciphi.ai/v3/retrieval/search", {
  method: "POST",
  headers: {
    "Authorization": `Bearer ${accessToken}`, // Include the Bearer token
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    "query": "Who is the developer?"
  }),
});

let body2 = await response2.json();
console.log(JSON.stringify(body2.results.chunk_search_results, null, 2));
```

### RAG Query
```javascript

const rag_response = await client.retrieval.rag({
    query: "Show 3 of the biggest contradictions in the documents",
    search_mode: "advanced",
    include_title_if_available: true
});
let rag_body = await rag_response.json();
console.log(JSON.stringify(rag_body.results.chunk_search_results, null, 2));

```


```javascript
const result = await client.retrieval.search({
    query: "Who is the developer?",
})
```

```javascript
const ragResult = await client.rag({
  query: "Who is the developer?",
  use_vector_search: true,
  filters: {},
  search_limit: 10,
  use_hybrid_search: false,
  use_kg_search: false,
});
```

# Appendix
## Get tokens when authenticating through GitHub

```javascript
// Step 1: Redirect user to authorization URL
async function startAuthorization() {
    const response = await fetch("https://api.cloud.sciphi.ai/v3/users/oauth/github/authorize", {
        method: "GET",
        headers: {
            "X-Api-Key": "pk_a8AYAiPNenekD8ZT.sk_LiWcouomkdqToRJnB4ttmLs9yzERuj93",
        },
    });
    const body = await response.json();
    console.log("Authorization URL:", body.url);

    // Redirect the user to GitHub's authorization page
    window.location.href = body.url;
}

// Step 2 & 3: Handle callback and exchange code for tokens
async function handleCallback() {
    // Extract code and state from the URL
    const urlParams = new URLSearchParams(window.location.search);
    const code = urlParams.get("code");
    const state = urlParams.get("state");

    if (!code || !state) {
        console.error("Missing code or state in the callback URL");
        return;
    }

    // Exchange code and state for access tokens
    const response = await fetch(`https://api.cloud.sciphi.ai/v3/users/oauth/github/callback?code=${code}&state=${state}`, {
        method: "GET",
        headers: {
            "X-Api-Key": "YOUR_API_KEY",
        },
    });
    const body = await response.json();
    console.log("Access token response:", body);

    // Store the token for authenticated API requests
    localStorage.setItem("access_token", body.access_token); // Example storage method
}

```

## Working code example

```javascript
const { r2rClient } = require("r2r-js");
const client = new r2rClient("https://api.cloud.sciphi.ai");
// Authenticate user and get tokens (POST /v3/users/login)
let response = await fetch("https://api.cloud.sciphi.ai/v3/users/login", {
  method: "POST",
  headers: {
    "X-Api-Key": "pk_MU4nfFAcPZVccJms.sk_GxoZDj3ShPWvJdhSfciSqLBnxUYyENaJ",
    "Content-Type": "application/x-www-form-urlencoded"
  },
  body: new URLSearchParams({
    username: "david@contractsmarts.ai",
    password: "Nephi-Moroni10"
  }).toString(), // Properly URL-encode the body
});
let body = await response.json();




```