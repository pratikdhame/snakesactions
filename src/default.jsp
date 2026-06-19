<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tagfiles" tagdir="/WEB-INF/tags" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/snakes.css" rel="stylesheet" />

    <title>Does it Have Snakes?</title>

    <style>
      :root {
        --hate-color: #1f6f43;
        --love-color: #7a3b8c;
        --bg-dark: #101418;
        --card-bg: rgba(255,255,255,0.05);
        --text-light: #f1f1f1;
      }
      body {
        background: var(--bg-dark);
        color: var(--text-light);
        font-family: 'Segoe UI', system-ui, sans-serif;
      }
      .snakes {
        max-width: 860px;
        margin: 0 auto;
        padding: 60px 24px;
      }
      .snakes h1.cover-heading {
        font-size: 2.6rem;
        font-weight: 700;
        margin-bottom: 4px;
      }
      .snakes .lead {
        font-size: 1.2rem;
        opacity: 0.8;
        margin-bottom: 32px;
      }
      .feature-card {
        background: var(--card-bg);
        border-radius: 12px;
        padding: 20px 24px;
        margin-bottom: 20px;
        border-left: 4px solid var(--hate-color);
        transition: transform 0.15s ease;
      }
      .snake-lover .feature-card {
        border-left-color: var(--love-color);
      }
      .feature-card:hover {
        transform: translateX(4px);
      }
      .feature-card h2 {
        font-size: 1.3rem;
        margin-top: 0;
      }
      .feature-card a {
        color: #66d9ef;
        font-weight: 600;
        text-decoration: none;
      }
      .feature-card a:hover {
        text-decoration: underline;
      }
      .toggle-banner {
        background: rgba(255,255,255,0.08);
        border-radius: 8px;
        padding: 14px 18px;
        margin: 24px 0;
        font-size: 1.05rem;
      }
      .toggle-banner a {
        color: #ffd166;
        font-weight: 700;
        text-decoration: none;
      }
      .footer-note {
        text-align: center;
        opacity: 0.5;
        margin-top: 40px;
        font-size: 0.9rem;
      }
    </style>
  </head>

  <script>
    function switchto(div) {
      if (div === 'love') {
        document.getElementById('love').style.display = 'block';
        document.getElementById('hate').style.display = 'none';
      } else {
        document.getElementById('hate').style.display = 'block';
        document.getElementById('love').style.display = 'none';
      }
    }
  </script>

  <body>
    <tagfiles:header />

    <div id="hate" class="container snakes snake-hater">
      <h1 class="cover-heading">🐍 Does it Have Snakes?</h1>
      <p class="lead">Your safety resource for staying snake-free at the movies.</p>

      <div class="toggle-banner">
        Actually love snakes? <a href="#" onclick="switchto('love');return false;">Switch to snake-lover mode →</a>
      </div>

      <div class="feature-card">
        <h2>📋 Browse the database</h2>
        <p>Skip the surprise. Check our curated <a href="movies">list of movies</a> that are certified snake-free — perfect for kids, the skittish, and anyone with ophidiophobia.</p>
      </div>

      <div class="feature-card">
        <h2>🔍 Search a specific title</h2>
        <p>Already have something in mind? Use our <a href="search">search page</a> to instantly check if a movie has snake scenes.</p>
      </div>

      <div class="feature-card">
        <h2>⚠️ Report a sighting</h2>
        <p>Watched something that's not in our database? <a href="add">Add it now</a> and help warn the next viewer.</p>
      </div>
    </div>

    <div id="love" class="container snakes snake-lover" style="display:none;">
      <h1 class="cover-heading">🐍 Does it Have Snakes!?</h1>
      <p class="lead">A celebration resource for snake enthusiasts.</p>

      <div class="toggle-banner">
        Not a fan of snakes? <a href="#" onclick="switchto('hate');return false;">Switch to snake-hater mode →</a>
      </div>

      <div class="feature-card">
        <h2>📋 Browse the database</h2>
        <p>Find your next watch from our <a href="movies">list of movies</a> guaranteed to deliver your scaly fix — great for the brave and the curious.</p>
      </div>

      <div class="feature-card">
        <h2>🔍 Search a specific title</h2>
        <p>Looking for a particular movie? Use our <a href="search">search bar</a> to check its snake content instantly.</p>
      </div>

      <div class="feature-card">
        <h2>📢 Spread the word</h2>
        <p>Found a movie with great snake scenes that's missing from our list? <a href="add">Add it</a> and help fellow snake lovers find it.</p>
      </div>
    </div>

    <p class="footer-note">Sample Java application · Deployed via Jenkins/GitHub Actions CI/CD</p>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/init.js"></script>
  </body>
</html>
