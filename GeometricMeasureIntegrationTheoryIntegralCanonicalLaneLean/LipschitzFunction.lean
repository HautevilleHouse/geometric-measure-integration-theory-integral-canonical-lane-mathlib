import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure LipschitzFunctionPackage where
  domain : Type u
  codomain : Type v
  metricDomain : MetricSpace domain
  metricCodomain : MetricSpace codomain
  function : domain → codomain
  lipschitzConstant : ℝ
  lipschitzBound : ∀ x y : domain, dist (function x) (function y) ≤ lipschitzConstant * dist x y

structure LipschitzFunctionEvidence (L : LipschitzFunctionPackage) where
  lipschitzBoundClosed : L.lipschitzBound

def LipschitzFunctionClosed (L : LipschitzFunctionPackage) : Prop :=
  L.lipschitzBound

theorem lipschitz_function_closed_from_evidence (L : LipschitzFunctionPackage)
    (E : LipschitzFunctionEvidence L) : LipschitzFunctionClosed L := by
  exact E.lipschitzBoundClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse