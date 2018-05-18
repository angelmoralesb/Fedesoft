module.exports = {
    mode: "development",
    entry : {
        "app": './src/main.ts',
        "vendor": './src/vendor.ts'
     },
    output: {
    filename: "[name].js"
    },
    module: {
        rules:[
            {
            test: /\.ts$/,
            loader: 'awesome-typescript-loader'
        },
        {
            test: /\.css$/,
            loader: 'style-loader!css-loader' 
        }       
      ]
    }
    
}
    