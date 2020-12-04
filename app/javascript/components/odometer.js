const counter = () => {
 	const odometer = document.querySelector('#odometer');
 	let amount = parseInt(odometer.dataset.globalMoney);
 	odometer.innerHTML = amount
	const interval = setInterval(() => {
	amount += 1 ;
	odometer.innerHTML = amount ;
    console.log(amount)}, 2000);
    // window.addEventListener("beforeunload", (event) => {
    // 	console.log(interval)
    // 	clearInterval(interval);
    // });
}

export { counter }