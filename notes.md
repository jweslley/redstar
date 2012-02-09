# Notes

  * Rails::Generators::GeneratedAttribute
  * `ActiveModel::Validations::HelperMethods.instance_methods.grep /validates_/`
    * `validates_`
      * _acceptance_of
      * _confirmation_of
      * _exclusion_of
      * _format_of
      * _inclusion_of
      * _length_of/_size_of
      * _numericality_of
      * _presence_of

    * example:

      :acceptance => true
      :confirmation => true
      :exclusion => { :in => %w(admin superuser) }
      :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
      :inclusion => { :in => 0..9 }
      :length => { :maximum => 30 }
      :numericality => true
      :presence => true
      :uniqueness => true

    * validator kind

        validator = model.class.validators_on(:attr_name).first
        validator.kind  # :acceptance, :confirmation, ...

  * grep -R **"module_namespacing do"** `/home/jonhnny/.rvm/gems/ruby-1.8.7-p334@rails3/gems/*-3.1.0`
    * railties-3.1.0
      * lib/rails/generators
      * lib/rails/generators/named_base.rb
      * lib/rails/generators/generated_attribute.rb
    * activerecord-3.1.0/lib/rails/generators
    * actionmailer-3.1.0/lib/rails/generators
