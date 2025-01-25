const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const PORT = 3000;

app.use(cors());
app.use(bodyParser.json());

app.post('/generate-roadmap', (req, res) => {
    const { domain, year, coreInterest, github } = req.body;

    // Here you would implement the logic to generate the roadmap based on the input
    const roadmap = `Generated roadmap for ${domain} in year ${year} focusing on ${coreInterest}. Check your GitHub: ${github}`;

    res.json({ roadmap });
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});