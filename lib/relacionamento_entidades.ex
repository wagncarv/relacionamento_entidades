defmodule RelacionamentoEntidades do
  alias RelacionamentoEntidades.Users.Create, as: UserCreate
  alias RelacionamentoEntidades.Users.Delete, as: UserDelete
  alias RelacionamentoEntidades.Users.Get, as: UserGet
  alias RelacionamentoEntidades.Users.Update, as: UserUpdate
  alias RelacionamentoEntidades.Meals.Get, as: MealGet

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate delete_user(params), to: UserDelete, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
  defdelegate update_user(params), to: UserUpdate, as: :call
  defdelegate get_meal_by_id(id), to: MealGet, as: :by_id
end
