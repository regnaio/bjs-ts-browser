## Run

```shell
npm i

# For your reference, here are the dependencies installed
npm i @babylonjs/core @babylonjs/materials
npm i -D esbuild typescript

npm run clean && npm run build

npx --yes serve -p 9000
```

Open: http://localhost:9000/

---

## Important Notes

According to [Babylon.js ES6 support with Tree Shaking](https://doc.babylonjs.com/setup/frameworkPackages/es6Support), the following lines are important:

`tsconfig.json`

```json
{
  ...
  "module": "ESNext",
  "moduleResolution": "Node",
  ...
}
```

If these lines are missing, imports need to have file extensions (e.g. `.js`).

---

## Docker (Optional)

```shell
docker build --target nonroot-dev -t bjs-ts-dev .

docker run -it --rm -p 9000:9000 --name bjs-ts-dev-container -v ${PWD}:/home/nonroot/app bjs-ts-dev /bin/bash
```
