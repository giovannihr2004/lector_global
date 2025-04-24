// -----------------------------------------------------------
// Archivo: fullscreen.js
// Descripción: Activa el modo de pantalla completa en web tras un clic del usuario
// Última actualización: 23/04/2025 - Versión 1.1
// -----------------------------------------------------------

document.addEventListener(
  "click",
  () => {
    if (document.fullscreenEnabled && !document.fullscreenElement) {
      document.documentElement.requestFullscreen().catch((err) => {
        console.warn("No se pudo activar pantalla completa:", err);
      });
    }
  },
  { once: true }
);
