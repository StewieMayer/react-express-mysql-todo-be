import express from "express"
import cors from "cors"
import dotenv from "dotenv"

dotenv.config()

const app = express()

app.use(cors())
app.use(express.json())

app.get('/',(_,res)=>{
    res.json({message: 'API online'})
})

export default app
