const express = require('express');
const fetch = require('node-fetch'); // Add this line to require node-fetch
const app = express();
const port = process.env.PORT || 3000;

// Serve static files from the "public" directory
app.use(express.json()); // Middleware to parse JSON bodies
app.use(express.static('public'));

// Body parser middleware to parse request bodies
app.use(express.urlencoded({ extended: true }));

// Greetings database
const greetings = {
    "USA": "Hello, friend from the USA!",
    "France": "Bonjour, ami de France!",
    "Spain": "Hola, amigo de España!",
    "Germany": "Hallo, Freund aus Deutschland!",
    "Italy": "Ciao, amico dall'Italia!",
    "India": "Namaste mere dost from India!"
    // Add more greetings for other countries
};

// Home route
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});

// Greet route
app.post('/greet', (req, res) => {
    const country = req.body.country;
    const message = greetings[country] || `Hello, friend from ${country}!`;
    res.send(message);
});

// New route for fetching news
app.post('/api/news', async (req, res) => {
    const country = req.body.country; // Assuming country is sent in the POST body
    const apiKey = '0abd61a4ab374f9da86bac6f12139330'; // Replace with your API key
    // You might need to map the country name to a 2-letter ISO country code for NewsAPI
    const countryCodeMap = {
        "USA": "us",
        "France": "fr",
        "Spain": "es",
        "Germany": "de",
        "Italy": "it",
        "India": "in"
        // Add mappings for other countries as needed
    };
    const countryCode = countryCodeMap[country] || 'us'; // Default to 'us' if not found
    const url = `https://newsapi.org/v2/top-headlines?country=${countryCode}&apiKey=${apiKey}`;

    try {
        const response = await fetch(url);
        const data = await response.json();
        res.json(data); // Send the news data back to the frontend
    } catch (error) {
        console.error('Error fetching news:', error);
        res.status(500).send('Error fetching news');
    }
});

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
