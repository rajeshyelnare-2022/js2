<%= new java.util.Date() %>

<br>
<script>
const scores = [22, 54, 76, 92, 43, 33];
let i = 0;

while (i < scores.length) {
    console.log(scores[i]);
    i++;
}
console.log(' last value '+scores[5]);
var form = new FormData();
form.append("id","1");
form.append("name","ABCS");
form.append("id","2");
form.append("name","KKK");
console.log(Object.fromEntries(form));
console.log('----');
for(let val of form.entries()) {
	console.log(val[0]+'----'+val[1]);
}
</script>
