<h1>配送先登録/一覧</h1>

<%= form_with model: @address, local:true do |f| %>

<div class="field">
  <%= f.label :郵便番号, class: 'col-3' %><span><%= f.text_field :shipping_postal_code class: '' %></span>
</div>

<div class="field">
  <%= f.label :住所, class: 'col-3' %><span><%= f.text_field :shipping_address, class: '' %></span>
</div>

<div class="field">
  <%= f.label :宛名, class: 'col-3' %><span><%= f.text_field :receiver, class: '' %></span><%= f.submit "新規登録", class: "col-3 btn btn-success" %>
</div>
