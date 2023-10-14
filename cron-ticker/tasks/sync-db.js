let time = 0;

const syncDB = () => {
    time++
    console.log('Tick every 5 seconds', time);
    return time
}

module.exports = {
    syncDB
}