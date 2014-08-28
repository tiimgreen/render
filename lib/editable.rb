class Editable

  # Returns HTML for editable text
  def self.text(page, field, default_text = 'Lorem ipsum dolor sit amet', html_options = {}, options = {})
    output = '<div class="editable" '

    # Add HTML options to help with modal
    html_options.merge!(data_field: field,
                        data_field_type: 'text',
                        data_modal_attached: '0',
                        title: 'Click to edit')

    if html_options.any?
      html_options.each do |key, val|
        # Adds an additional attributes specified in html_options to the
        # anchor tag.
        output += "#{key.to_s.gsub!('_', '-')}=\"#{val}\" "
      end
    end

    output += ">#{default_text}</div>"
    output.html_safe
  end
end
