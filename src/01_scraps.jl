using EcologicalNetworks
using Flux
using Plots


# train a predicting network for each empirical web. 
# take the empirical S and draw from BetaBinomial()
# rank species by degree
# train inputsk

empiricalwebs = nz_stream_foodweb()

summarystats = [trophic_level, centrality_degree, degree]

function summarize(A)
     
    summat = fill([], size(A))
    for i in 1:richness(A), j in 1:richness(A)
        summat[i,j] = vcat(istats, jstats)
    end
    summat
end


mat = nichemodel(50, 0.1)

summarize(mat)