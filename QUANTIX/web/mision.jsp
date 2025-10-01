<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>QUANTIX | Misión</title>
  <meta name="description" content="Quantix: blog e información corporativa" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg:#05060a;
      --bg-2:#0b0e16;
      --ink:#dbe9ff;
      --muted:#94a3b8;
      --primary:#39a0ff; /* azul vivo */
      --primary-2:#66ccff; /* azul claro */
      --accent:#00e1ff;    /* cian */
      --card:#0f1524;
      --glow: 0 0 32px rgba(57,160,255,.45), 0 0 64px rgba(0,225,255,.25);
      --radius: 18px;
      --shadow: 0 10px 35px rgba(0,0,0,.45);
    }
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0; font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Ubuntu,"Helvetica Neue",Arial;
      background: radial-gradient(1200px 800px at 10% -10%, rgba(0,225,255,.12), transparent 60%),
                  radial-gradient(1000px 600px at 100% 0%, rgba(57,160,255,.12), transparent 60%),
                  linear-gradient(180deg, var(--bg), var(--bg-2));
      color:var(--ink);
      overflow-x:hidden;
    }
    a{color:var(--primary); text-decoration:none}
    .container{max-width:1180px;margin-inline:auto;padding:24px}

    /* Top nav */
    .nav{position:sticky;top:0;z-index:50;backdrop-filter:saturate(180%) blur(10px);
      background:linear-gradient(180deg, rgba(10,14,22,.85), rgba(10,14,22,.55));
      border-bottom:1px solid rgba(102,204,255,.12);
    }
    .nav-inner{display:flex;align-items:center;justify-content:space-between; gap:16px}
    .brand{display:flex;align-items:center;gap:12px}
    .logo{
      width:38px;height:38px;border-radius:12px;background:radial-gradient(circle at 30% 30%, var(--accent), var(--primary));
      box-shadow: var(--glow);
      position:relative; overflow:hidden;
    }
    .logo:before{content:""; position:absolute; inset:-40%; background:conic-gradient(from 90deg, transparent 0 25%, rgba(255,255,255,.08) 25% 35%, transparent 35% 100%);
      animation:spin 9s linear infinite;}
    @keyframes spin{to{transform:rotate(360deg)}}
    .brand b{font-weight:900; letter-spacing:.5px}

    .menu{display:flex;gap:18px; flex-wrap:wrap}
    .menu a{font-weight:500; color:#c7e1ff}
    .menu a:hover{color:var(--primary-2)}

    .cta{display:inline-flex;align-items:center;gap:10px;padding:10px 14px;border-radius:999px;
      background:linear-gradient(135deg, rgba(0,225,255,.15), rgba(57,160,255,.15));
      border:1px solid rgba(102,204,255,.25);
      box-shadow: var(--glow);
    }

    /* Hero */
    .hero{position:relative; padding:64px 0 40px}
    .hero h1{font-size:clamp(36px, 7vw, 64px); line-height:1.05; margin:0 0 12px}
    .hero p{max-width:760px; color:var(--muted); font-size:clamp(15px,2.3vw,18px)}
    .pulse{
      height:3px; width:120px; background:linear-gradient(90deg, transparent, var(--accent), transparent);
      border-radius:999px; filter:blur(0.3px); margin:18px 0 0;
      animation:pulse 2.4s ease-in-out infinite;
    }
    @keyframes pulse{0%,100%{opacity:.3; transform:scaleX(.8)} 50%{opacity:1; transform:scaleX(1)}}

    /* Floating particles */
    .stars{position:absolute; inset:0; pointer-events:none; mask-image:radial-gradient(60% 60% at 50% 10%, black, transparent 70%)}
    .star{position:absolute; width:2px;height:2px;background:rgba(102,204,255,.9); border-radius:50%; filter:drop-shadow(0 0 6px rgba(102,204,255,.8)); animation: drift linear infinite}
    @keyframes drift{from{transform:translateY(0)} to{transform:translateY(40px)}}

    /* Sections */
    section{padding:42px 0}
    .section-title{display:flex;align-items:center;gap:12px;margin:0 0 20px}
    .section-title h2{margin:0;font-size:28px}
    .chip{font-size:12px;padding:6px 10px;border:1px solid rgba(102,204,255,.25);border-radius:999px;color:#bfe8ff;background:rgba(0,225,255,.06)}

    /* Cards grid (blog) */
    .grid{display:grid; gap:20px; grid-template-columns: repeat(12, 1fr)}
    .col-4{grid-column: span 4}
    .col-6{grid-column: span 6}
    .col-12{grid-column: span 12}
    @media (max-width:900px){ .col-4{grid-column: span 6} .col-6{grid-column: span 12} }
    @media (max-width:640px){ .col-4,.col-6{grid-column: span 12} }

    .card{background:linear-gradient(180deg, rgba(17,25,44,.9), rgba(13,19,34,.85));
      border:1px solid rgba(102,204,255,.18); border-radius:var(--radius); box-shadow:var(--shadow);
      overflow:hidden; position:relative; transition:.25s transform,.25s box-shadow,.25s border-color;
    }
    .card:hover{transform:translateY(-4px); box-shadow:var(--glow); border-color:rgba(102,204,255,.35)}
    .card .thumb{aspect-ratio:16/9; background:radial-gradient(circle at 30% 40%, rgba(0,225,255,.18), transparent 60%), linear-gradient(135deg, #0e162b, #0b1221)}
    .card .body{padding:18px}
    .eyebrow{font-size:12px;color:#99caff; letter-spacing:.3px}
    .card h3{margin:8px 0 8px; font-size:18px}
    .card p{margin:0; color:var(--muted)}

    /* Feature row */
    .feature{display:grid; grid-template-columns:1.1fr .9fr; gap:26px; align-items:center}
    @media (max-width:900px){.feature{grid-template-columns:1fr;}}
    .panel{background:linear-gradient(180deg, rgba(17,25,44,.9), rgba(13,19,34,.85)); border:1px solid rgba(102,204,255,.18); border-radius:var(--radius); padding:22px; box-shadow:var(--shadow)}
    .kpis{display:grid; grid-template-columns:repeat(3,1fr); gap:12px}
    .kpi{padding:16px;border-radius:14px;background:rgba(9,16,28,.6); border:1px solid rgba(102,204,255,.16)}
    .kpi b{font-size:22px}
    .kpi span{display:block;color:var(--muted); font-size:12px}

    /* Callout */
    .callout{display:flex; align-items:center; gap:18px; padding:16px 18px; border:1px dashed rgba(102,204,255,.35); border-radius:16px; background:rgba(0,225,255,.05)}

    /* Footer */
    footer{padding:28px 0 60px; color:#a8c4e6}
    .footer-grid{display:grid; grid-template-columns: 1.2fr .8fr .8fr; gap:30px}
    @media (max-width:900px){.footer-grid{grid-template-columns:1fr 1fr}}
    @media (max-width:640px){.footer-grid{grid-template-columns:1fr}}

    /* Mobile menu */
    .burger{display:none}
    @media (max-width:820px){
      .menu{display:none}
      .burger{display:inline-flex; flex-direction:column; gap:5px}
      .burger span{width:24px;height:2px;background:#c7e1ff}
      .drawer{position:fixed; inset:64px 16px auto 16px; background:linear-gradient(180deg, #0d1426, #0a0f1d); border:1px solid rgba(102,204,255,.25); border-radius:16px; padding:16px; display:none}
      .drawer a{display:block; padding:12px; border-radius:12px}
      .drawer a:hover{background:rgba(0,225,255,.06)}
    }

    /* Inputs */
    label{display:block; font-size:13px; color:#a8c4e6; margin-bottom:6px}
    input, textarea{
      width:100%; padding:12px 14px; border-radius:12px; border:1px solid rgba(102,204,255,.24);
      background:rgba(7,12,22,.65); color:var(--ink); outline:none; transition:.2s border-color,.2s box-shadow
    }
    input:focus, textarea:focus{border-color:rgba(102,204,255,.6); box-shadow:var(--glow)}
    style>
  :root {
    --bg: #05060a;
    --bg-2: #0b0e16;
    --ink: #dbe9ff;
    --muted: #94a3b8;
    --primary: #39a0ff;
    --primary-2: #66ccff;
    --accent: #00e1ff;
    --card: #0f1524;
    --glow: 0 0 32px rgba(57, 160, 255, .45), 0 0 64px rgba(0, 225, 255, .25);
    --radius: 18px;
    --shadow: 0 10px 35px rgba(0, 0, 0, .45);
  }

  /* Estilos generales */
  * {
    box-sizing: border-box;
  }

  html, body {
    height: 100%;
  }

  body {
    margin: 0;
    font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, "Helvetica Neue", Arial;
    background: radial-gradient(1200px 800px at 10% -10%, rgba(0, 225, 255, .12), transparent 60%),
                radial-gradient(1000px 600px at 100% 0%, rgba(57, 160, 255, .12), transparent 60%),
                linear-gradient(180deg, var(--bg), var(--bg-2));
    color: var(--ink);
    overflow-x: hidden;
  }

  /* Estilos del formulario */
  input, textarea {
    width: 100%; 
    padding: 12px 14px; 
    border-radius: 12px; 
    border: 1px solid rgba(102,204,255,.24);
    background: rgba(7,12,22,.65); /* Fondo oscuro */
    color: var(--ink); /* Texto claro */
    outline: none;
    transition: .2s border-color,.2s box-shadow;
  }

  input:focus, textarea:focus {
    border-color: rgba(102,204,255,.6); 
    box-shadow: var(--glow);
  }

  /* Otros estilos ya definidos (puedes agregar el resto de tu código aquí) */
</style>

    
  </style>
</head>
<body>
  <header class="nav">
    <div class="container nav-inner">
      <div class="brand">
        <div class="logo" aria-hidden="true"></div>
        <b>Quantix</b>
      </div>
      <nav class="menu" aria-label="Primary">
          <a href="index.html">Página principal</a>
        <a href="mision.jsp">Misión</a>
        <a href="vision.jsp">Visión</a>
        <a href="objetivos.jsp">Objetivos</a>
        <a href="servicios.jsp">Servicios</a>
        <a href="portafolio.jsp">Portafolio</a>
        <a href="contacto.jsp">Contacto</a>
      </nav>
      
    </div>
  </header>

  <section id="inicio" class="hero">
    <div class="stars" aria-hidden="true"></div>
    <div class="container">
      <span class="chip">Tecnología · Datos · Innovación</span>
      <h1>Misión de Quantix </h1>
      <p>
        Bienvenido al espacio oficial de <strong>Quantix</strong>. Aquí podrás mirar la misión de la empresa.

      </p>
      <div class="pulse" aria-hidden="true"></div>
    </div>
  </section>

  <!-- Sección Misión -->
  <section id="mision">
    <div class="container">
      <div class="section-title"><h2>Misión</h2><span class="chip">Misión</span></div>
      <div class="card" style="padding:24px">
        <p>
            La empresa QUANTIX, es una organización que se forma principalmente de un equipo de desarrollo de Software intermedio, en el área de Programación Web y Móvil a través de distintas metodologías ágiles (como Scrum), con el fin de formar una sociedad mejor conectada y sin problemas que atenten a la seguridad  intrapersonal.
        </p>
      </div>
    </div>
  </section>

 
  <footer>
    <div class="container footer-grid">
      <div>
        <div class="brand" style="margin-bottom:10px">
          <div class="logo" aria-hidden="true"></div>
          <b>Quantix</b>
        </div>
        <small>© <span id="y"></span> Quantix. Todos los derechos reservados.</small>
      </div>
      <div>
        <b>Secciones</b>
        <div style="margin-top:8px; display:grid; gap:6px">
            <a href="index.html">Página principal</a>
            <a href="mision.jsp">Misión</a>
            <a href="vision.jsp">Visión</a>
            <a href="objetivos.jsp">Objetivos</a>
            <a href="servicios.jsp">Servicios</a>
            <a href="portafolio.jsp">Portafolio</a>
            <a href="contacto.jsp">Contacto</a>
        </div>
      </div>
      <div>
        <b>Contacto</b>
        <div style="margin-top:8px; display:grid; gap:6px">
          <a href="mailto:hola@quantix.io">hola@quantix.io</a>
          <a href="#">LinkedIn</a>
          <a href="#">X / Twitter</a>
        </div>
      </div>
    </div>
  </footer>

  <script>
    // Dynamic stars
    const stars = document.querySelector('.stars');
    const makeStars = () => {
      if(!stars) return;
      stars.innerHTML = '';
      const N = Math.min(80, Math.floor(window.innerWidth/18));
      for(let i=0;i<N;i++){
        const s = document.createElement('div');
        s.className = 'star';
        s.style.left = Math.random()*100 + '%';
        s.style.top = Math.random()*60 + '%';
        s.style.opacity = (Math.random()*.6 + .4).toFixed(2);
        s.style.animationDuration = (Math.random()*10 + 8)+'s';
        stars.appendChild(s);
      }
    };
    makeStars();
    addEventListener('resize', makeStars);

    // Mobile drawer
    function toggleMenu(){
      let d = document.querySelector('.drawer');
      if(!d){
        d = document.createElement('div');
        d.className = 'drawer';
        d.innerHTML = `
          <a href="index.html" onclick="toggleMenu()">Página principal</a>
          <a href="mision.jsp" onclick="toggleMenu()">Misión</a>
          <a href="vision.jsp" onclick="toggleMenu()">Visión</a>
          <a href="objetivos.jsp" onclick="toggleMenu()">Objetivos</a>
          <a href="portafolio.jsp" onclick="toggleMenu()">Portafolio</a>
          <a href="servicios.jsp" onclick="toggleMenu()">Servicios</a>
          <a href="contacto.jsp" onclick="toggleMenu()">Contacto</a>
        `;
        document.body.appendChild(d);
      }
      d.style.display = d.style.display === 'block' ? 'none' : 'block';
    }

    // Year
    document.getElementById('y').textContent = new Date().getFullYear();
  </script>
</body>
</html>
