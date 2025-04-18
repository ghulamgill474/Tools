<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Free online image compression tool with adjustable compression levels. SEO optimized and monetized with AdSense.">
  <meta name="keywords" content="image compression, online image optimizer, responsive image tool, SEO image compression">
  <meta name="author" content="Your Name">
  <title>Responsive Image Compression Tool</title>
  <style>
    * {
      box-sizing: border-box;
    }
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f5f5;
      color: #333;
    }
    header, footer {
      background-color: #333;
      color: white;
      padding: 1rem;
      text-align: center;
    }
    main {
      padding: 2rem;
      max-width: 800px;
      margin: auto;
    }
    .tool {
      background-color: white;
      padding: 2rem;
      border-radius: 8px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
    input[type="range"] {
      width: 100%;
    }
    img {
      max-width: 100%;
      height: auto;
      margin-top: 1rem;
    }
    .adsense {
      margin: 2rem 0;
      text-align: center;
    }
    .cta {
      margin-top: 2rem;
      background-color: #e3f2fd;
      padding: 1rem;
      border-radius: 6px;
      text-align: center;
    }
  </style>
  <!-- Google AdSense placeholder -->
  <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=YOUR_ADSENSE_CLIENT_ID"
          crossorigin="anonymous"></script>
</head>
<body>
  <header>
    <h1>Responsive Image Compression Tool</h1>
  </header>
  <main>
    <div class="tool">
      <label for="upload">Upload Image:</label>
      <input type="file" id="upload" accept="image/*"><br><br>

      <label for="quality">Select Compression Level (10% - 100%):</label>
      <input type="range" id="quality" min="10" max="100" value="80">
      <span id="qualityValue">80%</span><br><br>

      <button onclick="compressImage()">Compress</button><br><br>

      <canvas id="canvas" style="display:none;"></canvas>
      <img id="output" alt="Compressed Image">
    </div>

    <div class="adsense">
      <!-- Replace data-ad-slot with your AdSense Ad Unit ID -->
      <ins class="adsbygoogle"
           style="display:block"
           data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
           data-ad-slot="1234567890"
           data-ad-format="auto"
           data-full-width-responsive="true"></ins>
      <script>
           (adsbygoogle = window.adsbygoogle || []).push({});
      </script>
    </div>

    <div class="cta">
      <p>📌 Don't forget to <strong>subscribe</strong> and click the <strong>bell icon</strong> to stay updated with my latest tutorials.</p>
      <p>👍 If you find this tool helpful, please <strong>like, share</strong>, and leave a <strong>comment</strong> below with any questions or topics you'd like me to cover.</p>
    </div>
  </main>

  <footer>
    <p>&copy; 2025 Image Compressor. All rights reserved.</p>
  </footer>

  <script>
    const qualitySlider = document.getElementById('quality');
    const qualityValue = document.getElementById('qualityValue');
    const upload = document.getElementById('upload');
    const canvas = document.getElementById('canvas');
    const output = document.getElementById('output');

    qualitySlider.addEventListener('input', () => {
      qualityValue.textContent = qualitySlider.value + '%';
    });

    function compressImage() {
      const file = upload.files[0];
      if (!file) return alert('Please upload an image.');

      const reader = new FileReader();
      reader.onload = function (e) {
        const img = new Image();
        img.src = e.target.result;
        img.onload = function () {
          const ctx = canvas.getContext('2d');
          canvas.width = img.width;
          canvas.height = img.height;
          ctx.drawImage(img, 0, 0);

          const compressedData = canvas.toDataURL('image/jpeg', qualitySlider.value / 100);
          output.src = compressedData;
          output.style.display = 'block';
        }
      }
      reader.readAsDataURL(file);
    }
  </script>
</body>
</html>
