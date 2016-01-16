# [Chicago Donut Club](https://chicagodonutclub.herokuapp.com/)


This is project started to promote the evaluation of donuts in Chicago.


<%= collection_radio_buttons(:score, [[1, '1. Didnt finish it'], [2, '2. Finished it but wont eat it again'], [3, '3. It fills the hunger'], [4, '4. is a lovbely number'], [5, '5 is a yes']],  :first, :last) do |b| %>
      <% b.label { b.radio_button + b.text } %>
    <% end %>




