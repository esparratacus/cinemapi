<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [adept it to your needs](#adept-it-to-your-needs)
  - [CINEMAPI](#CINEMAPI)
  - [Usage](#usage)
  - [Rake Tasks](#rake-tasks)

<!-- /TOC -->

# adapt it to your needs

##  CINEMAPI

Proof of concept for movie reservation system


## Usage

All following commands can and should be adapted/replaced to your needs.

- [Setup](#setup)
- [Run](#run)
- [Stop](#stop)

#### `Setup`

```
$ ./script/setup
```

#### `Run`

```
$ ./script/server *port (default: 9292)
```
and go to: [http://localhost:port/doc](http://localhost:9292/doc)
to access the OAPI documentation.

For production, set `RACK_ENV=production`
```
$ RACK_ENV=production ./script/server *port (default: 9292)
```


#### `Stop`

… would only be used, if server started in production mode
```
$ ./script/stop
```

## Rake Tasks

- [List Routes](#list-routes)
- [OpenApi Documentation and Validation](#openapi-documentation-and-validation)

#### List Routes

```
rake routes
```

comming from: [`grape-swagger` Rake Tasks](https://github.com/ruby-grape/grape-swagger#rake-tasks)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/esparratacus/cinemapi

