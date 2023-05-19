defmodule WhatTodoWeb.ErrorJSONTest do
  use WhatTodoWeb.ConnCase, async: true

  test "renders 404" do
    assert WhatTodoWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert WhatTodoWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
