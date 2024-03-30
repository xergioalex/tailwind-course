/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './public/index.html',
    './src/**/*.{html,js}'
  ],
  darkMode: false,
  theme: {
    extend: {
      colors:{
        primary:'#34a853',
        secondary:'#353535',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

