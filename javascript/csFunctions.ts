// csFunctions.ts


// Authenticate user and get tokens (POST /v3/users/login)
async function login(): Promise<{ access_token: string; refresh_token: string }> {
    const response = await fetch(`${BASE_URL}/v3/users/login`, {
        method: "POST",
        headers: {
            "X-Api-Key": API_KEY,
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: new URLSearchParams({
            username: USERNAME || "", // ✅ Fallback to empty string if undefined
            password: PASSWORD || ""
        }).toString(),
    });

    if (!response.ok) {
        throw new Error(`Login failed: ${response.statusText}`);
    }

    const body = await response.json();
    accessToken = body.access_token; // Store token for reuse
    return body; // ✅ Return the access and refresh tokens
}

// Search API call with access token (POST /v3/retrieval/search)
async function runSearch(query: string, accessToken: string = accessToken): Promise<any> {
    try {
        const response = await fetch(`${BASE_URL}/v3/retrieval/search`, {
            method: "POST",
            headers: {
                "Authorization": `Bearer ${accessToken}`, // ✅ Use accessToken, not `myAccessToken`
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

        return await response.json(); // ✅ Return the search results
    } catch (error) {
        console.error("Error during search:", error);
        throw error; // ✅ Re-throw for caller to handle
    }
}

// ✅ Use `export` instead of `module.exports` (TypeScript style)
export { login, runSearch };

