if @review.persisted?
  # Caso a review seja salva,
  # 1. Precisamos colocar o novo formulário na tela
  json.form render(partial: "reviews/form", 
  formats: :html, locals: {restaurant: @restaurant, review: Review.new})
  # 2. Retornar o objeto HTML a ser inserido no DOM
  json.item render(partial: "reviews/review", formats: :html,
  locals: {review: @review})
else
  # Caso a review não seja salva, vamos renderizar na tela um novo formulário de Review
  json.form render(partial: "reviews/form", 
  formats: :html, locals: {restaurant: @restaurant, review: Review.new})
end