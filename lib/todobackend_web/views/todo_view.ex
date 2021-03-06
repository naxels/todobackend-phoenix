defmodule TodobackendWeb.TodoView do
  use TodobackendWeb, :view
  alias TodobackendWeb.TodoView

  def render("index.json", %{todos: todos}) do
    # %{data: render_many(todos, TodoView, "todo.json")}
    render_many(todos, TodoView, "todo.json")
  end

  def render("show.json", %{todo: todo}) do
    # %{data: render_one(todo, TodoView, "todo.json")}
    render_one(todo, TodoView, "todo.json")
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id,
      title: todo.title,
      order: todo.order,
      completed: todo.completed,
      url: Routes.todo_url(TodobackendWeb.Endpoint, :show, todo)}
  end
end
