package daggermaven


import(
  "github.com/mlkmhd/universe.dagger.io/docker"
)

#Run: {
        pull: docker.#Pull & {
            source: "index.docker.io/maven:3.6.3"
        }
    
        run: docker.#Run & {            
            input: pull.output
            always: true
        
            command: {
                name:   "mvn"
                "args": ["clean", "package"]
            }
        }
}
