
let times = 0;

const syncDB = () => {
    times++;
    console.log('Ticks cada 5 segundos: ', times);
    return times;
}

module.exports = {
    syncDB
}