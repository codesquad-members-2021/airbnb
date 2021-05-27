export const registerCloseModalLayerEvent = ($target = document) => {
    $target.addEventListener('click', (e) => {
        const $layer = e.target.closest('.layer');
        if ($layer !== null) return;
        console.log($layer);
    });
};
