function createEditableModal(modal_id) {
  var modal_title = '';
  var $modal = $("<div class='modal fade' id='modal__" + modal_id + "'><div class='modal-dialog'><div class='modal-content'><div class='modal-header'><button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button><h4 class='modal-title'>" + modal_title + "</h4></div><div class='modal-body'><p><input type='text' class='editable-string-input' /></p></div><div class='modal-footer'><button type='button' class='btn btn-default' data-dismiss='modal'>Close</button><button type='button' class='btn btn-primary'>Save changes</button></div></div></div></div>");

  $('.modal_container').append($modal);
}

// Loop through .editable divs on page
$('.editable').each(function(index) {
  // Skip this element if a modal has already been attached
  if ($(this).attr('data-modal-attached') == 1) {
    return;
  }

  // On click, show modal
  $(this).click(function() {
    var selector = "#modal__" + $(this).attr('data-modal-id');
    $(selector).modal();
  });

  // Create modal to change text.
  createEditableModal($(this).attr('data-modal-id'));

  // A modal has now been attached
  $(this).attr('data-modal-attached', 1);
});
