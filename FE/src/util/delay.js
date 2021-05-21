const delay = (func, delayTime) =>
	new Promise((res, rej) => {
		func();
		setTimeout(() => res(), delayTime);
	});
export default delay;
