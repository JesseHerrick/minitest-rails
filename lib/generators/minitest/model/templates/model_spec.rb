require "test_helper"

<% module_namespacing do -%>
describe <%= class_name %> do
  include TestHelper

  let(:<%= file_name %>) { <%= class_name %>.new }

  it "must be valid" do
    <%= file_name %>.must_be :valid?
  end
end
<% end -%>
