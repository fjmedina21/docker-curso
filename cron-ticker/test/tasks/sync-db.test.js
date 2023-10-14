const { syncDB } = require("../../tasks/sync-db")

describe('Test in syncdb', ()=>{
    test('must exec the process twice',()=>{
        syncDB();
        const time = syncDB();

        expect(time).toBe(2)
    })
})