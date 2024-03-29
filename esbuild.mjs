import * as esbuild from 'esbuild';

await esbuild.build({
	/* --------------------------------------------------------------- CommonOptions ---------------------------------------------------------------- */
	format: 'esm',

	// platform: 'browser', // default

	// minify: true,

	/* ---------------------------------------------------------------- BuildOptions ---------------------------------------------------------------- */
	bundle: true,

	outfile: './dist/index.js',

	entryPoints: ['./tsc/index.js'],
});
