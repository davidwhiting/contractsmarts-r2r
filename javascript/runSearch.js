// csFunctions.js

// Authenticate user and get tokens (POST /v3/users/login)
async function login() {
    const response = await fetch(`${BASE_URL}/v3/users/login`, {
      method: "POST",
      headers: {
        "X-Api-Key": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
      },
      body: new URLSearchParams({
        username: USERNAME as string,
        password: PASSWORD as string
      }).toString(), // Properly URL-encode the body
    });
  if (!response.ok) {
    throw new Error(`Login failed: ${response.statusText}`);
  }
  const body = await response.json();
  return body;
}


async function runSearch(query: string, accessToken: string = sessionAccessToken) {
    try {
      const response = await fetch(`${BASE_URL}/v3/retrieval/search`, {
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

  module.exports = { login, runSearch };