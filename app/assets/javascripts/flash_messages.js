$(document).ready(() => {
  setTimeout(() => {
    $(".flash-container").fadeOut("slow", () => {
      $(this).remove();
    });
  }, 1500);
});
