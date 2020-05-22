import Pkg;
metadata_packages = [
    "BinDeps",
    "Bootstrap",
    "BSON",
    "Cairo",
    "Calculus",
    "Clustering",
    "CSV",
    "DataArrays",
    "DataFrames",
    "DataFramesMeta",
    "DataStreams",
    "Dates",
    "DecisionTree",
    "Distributions",
    "Distances",
    "Embeddings",
    "Feather",
    "Flux",
    "Gadfly",
    "GLM",
    "GR",
    "HDF5",
    "HypothesisTests",
    "JSON",
    "JLD2",
    "KernelDensity",
    "Klara",
    "Languages",
    "Mamba",
    "ManifoldLearning",
    "MLBase",
    "MLDataUtils",
    "MLLabelUtils",
    "MultivariateStats",
    "NMF",
    "OnlineStats",
    "Optim",
    "Parameters",
    "Pandas",
    "Plots",
    "PyCall",
    "PyPlot",
    "PDMats",
    "RDatasets",
    "SQLite",
    "StatsBase",
    "Statistics",
    "TensorFlow",
    "TextAnalysis",
    "TSne",
    "Turing",
    "TimeSeries",
    "Query",
    "ZipFile"]


for package=metadata_packages
    Pkg.add(package)
end

# need to build XGBoost version for it to work
Pkg.clone("https://github.com/antinucleon/XGBoost.jl.git")
Pkg.build("XGBoost")

Pkg.clone("https://github.com/benhamner/MachineLearning.jl")
Pkg.pin("MachineLearning")

Pkg.clone("https://github.com/Allardvm/LightGBM.jl.git")
ENV["LIGHTGBM_PATH"] = "../LightGBM"

Pkg.resolve()
