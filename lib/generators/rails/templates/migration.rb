class <%= migration_class_name %> < ActiveRecord::Migration
  def change
    create_table :<%= table_name %> do |t|
<% attributes.each do |attr| -%>
      t.<%= attr.type %> :<%= attr.name %><% if attr.required? %>, :null => false<% end %>
<% end -%>
<% if options[:timestamps] %>
      t.timestamps
<% end -%>
    end
<% if options[:indexes] -%>
<% attributes.select(&:reference?).each do |attr| -%>
    add_index :<%= table_name %>, :<%= attr.name %>_id
<% end -%>
<% end -%>
  end
end
