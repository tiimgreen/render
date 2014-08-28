$('.editable').each(function(index) {
  // Skip this element if a modal has already been attached
  if ($(this).attr('data-modal-attached') == 1) continue;
});
