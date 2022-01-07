const Koa = require('koa');
const app = new Koa();

const port = 3500;

app.use(async ctx => {
    ctx.body = 'Hello World'
});

app.listen(port, () => {
    console.log(`Server started on http://localhost:${port}`);
});