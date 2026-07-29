import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure AreaFormulaPackage where
  euclideanDomain : Type u
  euclideanCodomain : Type v
  metricEuclideanDomain : MetricSpace euclideanDomain
  metricEuclideanCodomain : MetricSpace euclideanCodomain
  lipschitzMap : LipschitzFunctionPackage
  areaFormulaStatement : Prop
  coareaFormulaStatement : Prop

structure AreaFormulaEvidence (A : AreaFormulaPackage) where
  areaFormulaClosed : A.areaFormulaStatement
  coareaFormulaClosed : A.coareaFormulaStatement

def AreaFormulaClosed (A : AreaFormulaPackage) : Prop :=
  A.areaFormulaStatement ∧ A.coareaFormulaStatement

theorem area_formula_closed_from_evidence (A : AreaFormulaPackage)
    (E : AreaFormulaEvidence A) : AreaFormulaClosed A := by
  exact And.intro E.areaFormulaClosed E.coareaFormulaClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse