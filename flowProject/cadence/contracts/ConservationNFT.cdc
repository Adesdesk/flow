access(all) contract ConservationNFT {

    access(all) resource MyResource {
        access(all) let id: Int

        init(_ id: Int) {
            self.id = id
        }
    }

    access(all) fun createResource(id: Int): @MyResource {
        return <- create MyResource(id)
    }
}
