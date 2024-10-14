import { Hono } from 'hono'
import { count } from './utils/count'

const app = new Hono()

app.get('/', (c) => {
  const num = count(1)
  return c.text(`Hello, from social! ${num}`)
})

export default {
  port: 8080,
  fetch: app.fetch,
} 
