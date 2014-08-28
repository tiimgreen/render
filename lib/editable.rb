class Editable

  # Returns an editable div for editable text
  #
  # Params:
  # => @page (ActiveModel): The page that the field is on
  # => @field (String): The name of the field in the database to be edited
  # => @text (Text): The text do be displayed
  # => @html_options (Hash): Any HTML attributes to be added to the editable div
  # => @options (Hash): Any additional options for the function
  #
  def self.text(page, field, text = 'Lorem ipsum dolor sit amet', html_options = {}, options = {})
    output = '<div class="editable" '

    # Add HTML options to help with modal
    html_options.merge!(data_field: field,
                        data_field_type: 'text',
                        data_modal_attached: '0',
                        title: 'Click to edit')

    # Loops through html_options and add them to editable div
    if html_options.any?
      html_options.each do |key, val|
        # Adds an additional attributes specified in html_options to the
        # anchor tag.
        output += "#{key.to_s.gsub!('_', '-')}=\"#{val}\" "
      end
    end

    output += ">#{text}</div>"
    output.html_safe
  end
end
