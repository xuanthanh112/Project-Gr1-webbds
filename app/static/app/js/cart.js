var updateBtns= document.getElementsByClassName('update-cart')
for(i=0; i<updateBtns.length; i++){
    updateBtns[i].addEventListener('click', function(){
        var productId= this.dataset.product
        var action = this.dataset.action
        console.log('productId', productId, 'action ', action)
        console.log('user:',user)
        if (user === "AnonymousUser"){
            console.log('user not log in')
        }else{
            updateUserOrder(productId, action)

        }
    })
    function updateUserOrder(productId, action) {
        console.log('User logged in, updating order');
        var url = '/update_item/';
        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRFToken': csrftoken
            },
            body: JSON.stringify({ 'productId': productId, 'action': action })
        })
        .then(response => response.json())
        .then(data => {
            console.log(data);
            if (data.message === 'Item deleted') {
                location.reload();  // Reload to reflect the deletion
            } else if (data.message === 'Updated successfully') {
                location.reload();  // Optionally reload to update the quantity display
            }
        })
        .catch(error => console.error('Error:', error));
    }}
    


