<section class="bg-gray-100 p-4 mx-4">
    <h1 class="text-2xl font-bold mb-4"> Descripcion cart {{modedsc}}</h1>
    
{{with cart}}

    <form class="my-4 bg-white p-8 rounded shadow-lg mx-auto max-w-md" action="index.php?page=Carts_Carts&mode={{~mode}}&idCart={{id}}" method="POST"><input type="hidden" name="xss_token_cart" value="{{~xss_token_cart}}"/><section class="mb-4">
                <label for="idcart" class="block text-gray-700 text-sm font-bold mb-2">idcart</label>
                <input type="text" id="idcart" name="idcart" placeholder="idcart de cart " value="{{idcart}}" {{if ~readonly}} readonly {{endif ~readonly}} class="w-full py-2 px-3 border border-gray-300 rounded focus:outline-none focus:border-blue-400"/>
                {{if idcart_error}}<div class="text-red-500 text-sm">{{idcart_error}}</div>{{endif idcart_error}}
            </section><section class="mb-4">
                <label for="userid" class="block text-gray-700 text-sm font-bold mb-2">userid</label>
                <input type="text" id="userid" name="userid" placeholder="userid de cart " value="{{userid}}" {{if ~readonly}} readonly {{endif ~readonly}} class="w-full py-2 px-3 border border-gray-300 rounded focus:outline-none focus:border-blue-400"/>
                {{if userid_error}}<div class="text-red-500 text-sm">{{userid_error}}</div>{{endif userid_error}}
            </section><section class="mb-4">
                <label for="name" class="block text-gray-700 text-sm font-bold mb-2">name</label>
                <input type="text" id="name" name="name" placeholder="name de cart " value="{{name}}" {{if ~readonly}} readonly {{endif ~readonly}} class="w-full py-2 px-3 border border-gray-300 rounded focus:outline-none focus:border-blue-400"/>
                {{if name_error}}<div class="text-red-500 text-sm">{{name_error}}</div>{{endif name_error}}
            </section><section class="mb-4">
                <label for="price" class="block text-gray-700 text-sm font-bold mb-2">price</label>
                <input type="text" id="price" name="price" placeholder="price de cart " value="{{price}}" {{if ~readonly}} readonly {{endif ~readonly}} class="w-full py-2 px-3 border border-gray-300 rounded focus:outline-none focus:border-blue-400"/>
                {{if price_error}}<div class="text-red-500 text-sm">{{price_error}}</div>{{endif price_error}}
            </section><section class="mb-4">
                <label for="quantity" class="block text-gray-700 text-sm font-bold mb-2">quantity</label>
                <input type="text" id="quantity" name="quantity" placeholder="quantity de cart " value="{{quantity}}" {{if ~readonly}} readonly {{endif ~readonly}} class="w-full py-2 px-3 border border-gray-300 rounded focus:outline-none focus:border-blue-400"/>
                {{if quantity_error}}<div class="text-red-500 text-sm">{{quantity_error}}</div>{{endif quantity_error}}
            </section><section class="mb-4">
                <label for="sessionid" class="block text-gray-700 text-sm font-bold mb-2">sessionid</label>
                <input type="text" id="sessionid" name="sessionid" placeholder="sessionid de cart " value="{{sessionid}}" {{if ~readonly}} readonly {{endif ~readonly}} class="w-full py-2 px-3 border border-gray-300 rounded focus:outline-none focus:border-blue-400"/>
                {{if sessionid_error}}<div class="text-red-500 text-sm">{{sessionid_error}}</div>{{endif sessionid_error}}
            </section><section class="col-12 right">
        {{if ~showConfirm}}
            <button type="submit" name="btnConfirm">Confirm</button>&nbsp;
        {{endif ~showConfirm}}
        <button id="btnCancel">Cancel</button>
        </section>
        </section></form></section>
{{endwith cart}}

<script>
        document.addEventListener("DOMContentLoaded", ()=>{
            document.getElementById("btnCancel").addEventListener("click", (e)=>{
                e.preventDefault();
                e.stopPropagation();
                document.location.assign("index.php?page=Carts_Cart");
            });
        });
    </script>