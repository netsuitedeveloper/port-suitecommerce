{{#if isItemSelected}}
	{{#if isAuthorized}}
		<a class="quick-add-item-results">
			<div class="quick-add-item-results-image">
				<img data-loader="false" class="typeahead-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}">
			</div>
			<div class="quick-add-item-results-content">
				<div class="quick-add-item-results-title">
					{{highlightKeyword model.item._name query}}
				</div>
				<div data-view="Item.Sku"></div>
				<div data-view="Item.Price"></div>
				<div data-view="Item.Options"></div>
				<div data-view="Item.Stock"></div>
			</div>
		</a>
	{{else}}
		<a class="quick-add-item-results-restricted">
			<div class="quick-add-item-results-image">
				<img data-loader="false" class="typeahead-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}">
			</div>
			<div class="quick-add-item-results-content">
				<div class="quick-add-item-results-title">
					{{highlightKeyword model.item._name query}}
				</div>
				<div data-view="Item.Sku"></div>
				<div data-view="RestrictionMessage"></div>
			</div>
		</a>
	{{/if}}
{{else}}
	<div class="quick-add-item-shadow"></div>
	{{#unless hasResults}}
		{{#if isAjaxDone}}
			<div class="quick-add-item-no-results">
				{{translate 'No results'}}
				<span class="hide">{{currentQuery}}</span>
			</div>
		{{else}}
			<div class="quick-add-item-searching">
				{{translate 'Searching...'}}
				<span class="hide">{{currentQuery}}</span>
			</div>
		{{/if}}
	{{/unless}}
{{/if}}

{{!----
The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools.

----}}
