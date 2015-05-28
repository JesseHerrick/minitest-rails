require "test_helper"
require "<%= generator_path %>"

<% module_namespacing do -%>
describe <%= class_name %>Generator do
  include TestHelper
  # it "generator runs without errors" do
  #   # No error raised? It passes.
  #   run_generator ["arguments"]
  # end
end
<% end -%>
