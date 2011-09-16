<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
<% attributes.select(&:reference?).each do |attr| -%>
  belongs_to :<%= attr.name %>
<% end -%>
<% attributes.select(&:required?).each do |attr| -%>
  validates_presence_of :<%= attr.name %>
<% end -%>
end
<% end -%>
