const sqlite3 = require("sqlite3")
const db = new sqlite3.Database("./test.db")

db.serialize(() => {
    // ここにDBの処理を書く
})

db.close()
