# Write Regular Expressions for the following format
# Email format checking
# Image file format checking
# Document file format checking

class RegExp
    attr_accessor :email, :image, :doc

    def initialize(email,image,doc)
      @email,@image,@doc = email,image,doc
    end

    def email_format_check
        email_pattern = /[a-zA-z0-9_.-]+@[a-zA-z0-9]+\.[a-zA-Z]{2,3}$/
        if email.match(email_pattern)
            puts "Email id is valid"
        else
            puts "Invalid Email id"
        end
    end

    def image_format_check
        image_pattern = /([^\s]+\.(?i)(jpe?g|png|gif|bmp)$)/
        res = image.match(image_pattern)?  "Image format is valid" :  "Invalid Image format"
        puts res
    end

    def doc_format_check
        doc_pattern = /([^\s]+\.(?i)(txt|pdf|csv|doc)$)/
        puts doc.match(doc_pattern)?  "Doc format is valid" :  "Invalid Doc format"
    end
end

puts "Enter the Email Id: "
email = gets.chomp
puts "Enter the Image File: "
image = gets.chomp
puts "Enter the Document File: "
doc = gets.chomp
reg_obj = RegExp.new(email,image,doc)
reg_obj.email_format_check
reg_obj.image_format_check
reg_obj.doc_format_check
